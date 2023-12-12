from django.test import TestCase
from project_app_vm.models import Project, GISData, PolygonData, LineData, PointData
from django.contrib.auth.models import User
from django.contrib.gis.geos import Point, LineString, Polygon
from auth_app_vm.models import User_additional, User_payment, Audit_log
from datetime import date
from django.core.files.uploadedfile import SimpleUploadedFile
from report_app_vm.models import Report
from species_app_vm.models import SpeciesCentralDatabank, SpeciesUserDatabank
import json

class ProjectModelTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        # Create a User instance for the test
        test_user = User.objects.create_user(username='testuser', password='12345')
        # Create a Project instance for the test
        cls.project = Project.objects.create(project_name='Test Project', description='A test project', user=test_user)

    def test_project_name(self):
        self.assertEqual(self.project.project_name, 'Test Project')

    def test_string_representation(self):
        self.assertEqual(str(self.project), 'Test Project')

class PolygonDataModelTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        user = User.objects.create_user(username='testuser', password='12345')
        project = Project.objects.create(project_name='Test Project', description='Test Description', user=user)
        PolygonData.objects.create(name='Test Polygon', status='Active', project=project, geo_data=Polygon(((0, 0), (1, 1), (1, 0), (0, 0))))

    def test_polygon_data_name(self):
        polygon_data = PolygonData.objects.get(id=1)
        self.assertEqual(polygon_data.name, 'Test Polygon')

class LineDataModelTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        user = User.objects.create_user(username='lineuser', password='12345')
        project = Project.objects.create(project_name='Line Test Project', description='Line Test Description', user=user)
        LineData.objects.create(name='Test Line', status='Active', project=project, geo_data=LineString((0, 0), (1, 1)))

    def test_line_data_name(self):
        line_data = LineData.objects.get(id=1)
        self.assertEqual(line_data.name, 'Test Line')

class PointDataModelTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        user = User.objects.create_user(username='pointuser', password='12345')
        project = Project.objects.create(project_name='Point Test Project', description='Point Test Description', user=user)
        PointData.objects.create(name='Test Point', status='Active', project=project, geo_data=Point(0, 0), attributes={'key': 'value'})

    def test_point_data_name(self):
        point_data = PointData.objects.get(id=1)
        self.assertEqual(point_data.name, 'Test Point')

    def test_point_data_attributes(self):
        point_data = PointData.objects.get(id=1)
        self.assertEqual(point_data.attributes, {'key': 'value'})

class UserAdditionalModelTest(TestCase):

    @classmethod
    def setUpTestData(cls):
        # Create a User instance for testing
        user = User.objects.create_user(username='testuser', password='12345')
        User_additional.objects.create(user=user, organization_name="Test Org", role="Test Role",
                                       job_title="Test Job", department="Test Dept", phone_number="1234567890")

    def test_user_additional_creation(self):
        user_additional = User_additional.objects.get(id=1)
        self.assertEqual(user_additional.user.username, 'testuser')
        self.assertEqual(user_additional.organization_name, 'Test Org')
        # ... other assertions for the rest of the fields ...


class UserPaymentModelTest(TestCase):

    @classmethod
    def setUpTestData(cls):
        user = User.objects.create_user(username='testuser', password='12345')
        User_payment.objects.create(user=user, active_account=True, Payment_latest_invoice=True,
                                    payment_date=date.today(), payment_price=100.00,
                                    payment_invoice_number="INV001", payment_invoice_date=date.today(),
                                    payment_invoice_due_date=date.today(), payment_email="test@example.com",
                                    payment_adress="Test Address", payment_telephone="0987654321",
                                    payment_reference="Test Reference", payment_comment="Test Comment")

    def test_user_payment_creation(self):
        user_payment = User_payment.objects.get(id=1)
        self.assertEqual(user_payment.user.username, 'testuser')
        self.assertTrue(user_payment.active_account)
        # ... other assertions for the rest of the fields ...


class AuditLogModelTest(TestCase):

    @classmethod
    def setUpTestData(cls):
        user = User.objects.create_user(username='testuser', password='12345')
        Audit_log.objects.create(user=user, action="Test Action", details="Test Details")

    def test_audit_log_creation(self):
        audit_log = Audit_log.objects.get(id=1)
        self.assertEqual(audit_log.user.username, 'testuser')
        self.assertEqual(audit_log.action, 'Test Action')
        self.assertEqual(audit_log.details, 'Test Details')
        # ... other assertions for the rest of the fields ...

class ReportModelTest(TestCase):

    @classmethod
    def setUpTestData(cls):
        # Create a user and project for testing
        test_user = User.objects.create_user(username='testuser', password='12345')
        test_project = Project.objects.create(project_name="Test Project", description="Test Description", user=test_user)
        
        # Create a dummy file for testing
        test_file = SimpleUploadedFile("test_report2.txt", b"Test report content")

        Report.objects.create(project=test_project, report_data=test_file)

    def test_report_creation(self):
        report = Report.objects.get(id=1)
        self.assertEqual(report.project.project_name, "Test Project")
        self.assertTrue(report.report_data.name.endswith("test_report2.txt"))
        # Test other fields as needed

class SpeciesCentralDatabankModelTest(TestCase):

    @classmethod
    def setUpTestData(cls):
        SpeciesCentralDatabank.objects.create(
            taxon_id=123,
            species_name_common="Test Species",
            latin_name="Testus specius",
            species_data=json.dumps({"info": "test data"}),
            source="Test Source"
        )

    def test_species_central_databank_creation(self):
        species = SpeciesCentralDatabank.objects.get(id=1)
        self.assertEqual(species.taxon_id, 123)
        self.assertEqual(species.species_name_common, "Test Species")
        self.assertEqual(species.latin_name, "Testus specius")
        self.assertEqual(json.loads(species.species_data), {"info": "test data"})
        self.assertEqual(species.source, "Test Source")

class SpeciesUserDatabankModelTest(TestCase):

    @classmethod
    def setUpTestData(cls):
        test_user = User.objects.create_user(username='testuser', password='12345')
        SpeciesUserDatabank.objects.create(
            taxon_id=456,
            species_name_common="User Species",
            latin_name="Usertus specius",
            species_data="User test data",
            source="User Source",
            user=test_user
        )

    def test_species_user_databank_creation(self):
        user_species = SpeciesUserDatabank.objects.get(id=1)
        self.assertEqual(user_species.taxon_id, 456)
        self.assertEqual(user_species.species_name_common, "User Species")
        self.assertEqual(user_species.latin_name, "Usertus specius")
        self.assertEqual(user_species.species_data, "User test data")
        self.assertEqual(user_species.source, "User Source")
        self.assertEqual(user_species.user.username, 'testuser')
