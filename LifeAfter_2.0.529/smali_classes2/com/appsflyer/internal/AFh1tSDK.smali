.class public final Lcom/appsflyer/internal/AFh1tSDK;
.super Lcom/appsflyer/internal/AFa1pSDK;
.source ""


# instance fields
.field public final force:Lcom/appsflyer/internal/AFe1bSDK;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1pSDK;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->force:Lcom/appsflyer/internal/AFe1bSDK;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFe1bSDK;)V
    .locals 2

    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/appsflyer/internal/AFa1pSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1199
    iput-object p3, p0, Lcom/appsflyer/internal/AFa1pSDK;->values:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFa1pSDK;->values([B)Lcom/appsflyer/internal/AFa1pSDK;

    .line 25
    iput-object p4, p0, Lcom/appsflyer/internal/AFh1tSDK;->force:Lcom/appsflyer/internal/AFe1bSDK;

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1bSDK;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1tSDK;->force:Lcom/appsflyer/internal/AFe1bSDK;

    if-eqz v0, :cond_0

    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1bSDK;->valueOf:Lcom/appsflyer/internal/AFe1bSDK;

    return-object v0
.end method
