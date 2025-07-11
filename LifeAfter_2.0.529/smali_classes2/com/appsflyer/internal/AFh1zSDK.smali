.class public final Lcom/appsflyer/internal/AFh1zSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFKeystoreWrapper:Ljava/lang/String;

.field public final valueOf:Landroid/content/Intent;

.field public final values:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/appsflyer/internal/AFh1aSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFh1zSDK;->valueOf:Landroid/content/Intent;

    .line 13
    invoke-interface {p2, p1}, Lcom/appsflyer/internal/AFh1aSDK;->AFInAppEventParameterName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFh1zSDK;->values:Ljava/lang/String;

    .line 14
    invoke-interface {p2, p1}, Lcom/appsflyer/internal/AFh1aSDK;->valueOf(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFh1zSDK;->AFKeystoreWrapper:Ljava/lang/String;

    return-void
.end method
