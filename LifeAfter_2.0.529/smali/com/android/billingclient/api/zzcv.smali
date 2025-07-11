.class public final synthetic Lcom/android/billingclient/api/zzcv;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/ProxyBillingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ProxyBillingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcv;->zza:Lcom/android/billingclient/api/ProxyBillingActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzcv;->zza:Lcom/android/billingclient/api/ProxyBillingActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/ProxyBillingActivity;->onAlternativeBillingOnlyDialogResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
