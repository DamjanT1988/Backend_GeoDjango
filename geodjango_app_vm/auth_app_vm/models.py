from django.db import models
from django.contrib.auth.models import User

class User_additional(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    account_type = models.BooleanField("Företagskonto:", default=False)
    organization_name = models.CharField("Organisationsnamn:", max_length=255, null=True, blank=True)
    organization_number = models.CharField("Organisationsnummer:", max_length=255, null=True, blank=True)
    role = models.CharField("Roll:", max_length=255, null=True, blank=True)
    job_title = models.CharField("Jobbtitel:", max_length=255, null=True, blank=True)
    department = models.CharField("Avdelning:", max_length=255, null=True, blank=True)
    phone_number = models.CharField("Telefonnummer:", max_length=100, null=True, blank=True)

    class Meta:
            verbose_name = "Ytterligare användarinformation"
            verbose_name_plural = "Ytterligare användarinformation"

class User_payment(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='payments')
    active_account = models.BooleanField("Aktiverat konto:", default=True)
    Payment_latest_invoice = models.BooleanField("Betalat senaste faktura:", default=False)
    payment_date = models.DateField("Senaste betalningsdatum:", null=True, blank=True)
    payment_price = models.FloatField("Pris per månad:", null=True, blank=True)
    payment_invoice_number = models.CharField("Nuvarande fakturanummer:", max_length=255, null=True, blank=True)
    payment_invoice_date = models.DateField("Nuvarande fakturadatum:", null=True, blank=True)
    payment_invoice_due_date = models.DateField("Nuvarande förfallodatum:", null=True, blank=True)
    payment_email = models.CharField("Fakturerings e-postadress:", max_length=255, null=True, blank=True)
    payment_adress = models.TextField("Faktureringsadress:", null=True, blank=True)
    payment_telephone = models.CharField("Kontaktelefonnummer:", max_length=255, null=True, blank=True)
    payment_reference = models.CharField("Deras referens:", max_length=255, null=True, blank=True)
    payment_comment = models.TextField("Kommentar om kund:", null=True, blank=True)

    class Meta:
            verbose_name = "Betalnings- och kontoinformation"
            verbose_name_plural = "Betalnings- och kontoinformation"


class Audit_log(models.Model):
    action = models.CharField("Aktion:", max_length=255, null=True, blank=True)
    details = models.TextField("Information:", null=True, blank=True)
    timestamp = models.DateTimeField("Tidslag:", auto_now_add=True, null=True, blank=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    class Meta:
            verbose_name = "Revisionslogg"
            verbose_name_plural = "Revisionslogg"