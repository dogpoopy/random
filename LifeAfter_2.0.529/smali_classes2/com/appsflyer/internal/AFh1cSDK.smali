.class public abstract Lcom/appsflyer/internal/AFh1cSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFh1cSDK$AFa1tSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0003\u001a\u00020\u0002H%\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u000fX\u0085\u0002\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0010R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00118\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFh1cSDK;",
        "",
        "",
        "values",
        "()Ljava/lang/String;",
        "Lcom/appsflyer/internal/AFh1eSDK;",
        "AFInAppEventParameterName",
        "()Lcom/appsflyer/internal/AFh1eSDK;",
        "Landroid/net/NetworkInfo;",
        "p0",
        "",
        "valueOf",
        "(Landroid/net/NetworkInfo;)Z",
        "AFInAppEventType",
        "()Z",
        "Landroid/net/ConnectivityManager;",
        "Landroid/net/ConnectivityManager;",
        "Landroid/telephony/TelephonyManager;",
        "AFKeystoreWrapper",
        "Landroid/telephony/TelephonyManager;",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "AFa1tSDK"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AFa1tSDK:Lcom/appsflyer/internal/AFh1cSDK$AFa1tSDK;


# instance fields
.field AFInAppEventType:Landroid/net/ConnectivityManager;

.field private final AFKeystoreWrapper:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appsflyer/internal/AFh1cSDK$AFa1tSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFh1cSDK$AFa1tSDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/AFh1cSDK;->AFa1tSDK:Lcom/appsflyer/internal/AFh1cSDK$AFa1tSDK;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 15
    :goto_0
    iput-object v0, p0, Lcom/appsflyer/internal/AFh1cSDK;->AFInAppEventType:Landroid/net/ConnectivityManager;

    const-string v0, "phone"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/telephony/TelephonyManager;

    :cond_1
    iput-object v2, p0, Lcom/appsflyer/internal/AFh1cSDK;->AFKeystoreWrapper:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method protected static valueOf(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final AFInAppEventParameterName()Lcom/appsflyer/internal/AFh1eSDK;
    .locals 6

    const/4 v0, 0x0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1cSDK;->AFKeystoreWrapper:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 34
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 35
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    const-string v0, "CDMA"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :cond_2
    move-object v2, v0

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    :goto_2
    const-string v3, "Exception while collecting network info. "

    .line 41
    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    .line 43
    :cond_3
    :goto_3
    new-instance v1, Lcom/appsflyer/internal/AFh1eSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFh1cSDK;->values()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFh1cSDK;->AFInAppEventType()Z

    move-result v4

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/appsflyer/internal/AFh1eSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public abstract AFInAppEventType()Z
.end method

.method protected abstract values()Ljava/lang/String;
.end method
