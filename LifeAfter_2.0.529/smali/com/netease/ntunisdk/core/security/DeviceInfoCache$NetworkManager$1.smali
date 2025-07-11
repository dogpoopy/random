.class final Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/ntunisdk/modules/api/ModulesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$1;->a:Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extendFuncCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceInfoCache extendFuncCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "getNetworkInfoJson"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p3}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->a(Ljava/lang/String;)Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$1;->a:Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->a(Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager$1;->a:Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;

    iget p1, p1, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkInfo;->getType:I

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;->a(Lcom/netease/ntunisdk/core/security/DeviceInfoCache$NetworkManager;I)V

    return-void
.end method
