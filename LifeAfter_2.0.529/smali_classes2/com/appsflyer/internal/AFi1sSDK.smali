.class public final Lcom/appsflyer/internal/AFi1sSDK;
.super Lcom/appsflyer/internal/AFi1wSDK;
.source ""


# instance fields
.field private final AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 2

    const-string v0, "store"

    const-string v1, "huawei"

    .line 32
    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFi1wSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 33
    iput-object p2, p0, Lcom/appsflyer/internal/AFi1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    return-void
.end method


# virtual methods
.method public final values(Landroid/content/Context;)V
    .locals 7

    .line 37
    new-instance v6, Lcom/appsflyer/internal/AFi1sSDK$1;

    iget-object v3, p0, Lcom/appsflyer/internal/AFi1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "FFE391E0EA186D0734ED601E4E70E3224B7309D48E2075BAC46D8C667EAE7212"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "3BAF59A2E5331C30675FAB35FF5FFF0D116142D3D4664F1C3CB804068B40614F"

    aput-object v1, v5, v0

    const-string v4, "com.huawei.appmarket.commondata"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFi1sSDK$1;-><init>(Lcom/appsflyer/internal/AFi1sSDK;Landroid/content/Context;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1sSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lcom/appsflyer/internal/AFi1sSDK;->values(Lcom/appsflyer/internal/AFd1xSDK;Lcom/appsflyer/internal/AFd1zSDK;)V

    return-void
.end method
