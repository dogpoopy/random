.class public final synthetic Lcom/android/billingclient/api/zzam;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic zzb:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzam;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzam;->zzb:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzam;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/zzam;->zzb:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzt(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
