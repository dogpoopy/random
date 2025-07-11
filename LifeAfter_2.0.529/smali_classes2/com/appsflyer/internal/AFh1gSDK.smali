.class public final Lcom/appsflyer/internal/AFh1gSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFInAppEventParameterName:Landroid/content/Context;

.field public AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1cSDK;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFh1gSDK;->AFInAppEventParameterName:Landroid/content/Context;

    return-void
.end method
