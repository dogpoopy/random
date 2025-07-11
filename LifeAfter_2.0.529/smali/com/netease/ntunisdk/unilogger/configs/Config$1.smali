.class Lcom/netease/ntunisdk/unilogger/configs/Config$1;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Lcom/netease/ntunisdk/unilogger/network/NetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/unilogger/configs/Config;->handleRegion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/unilogger/configs/Config;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/unilogger/configs/Config;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetCallback(ILjava/lang/String;)V
    .locals 2

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Config [startEveryModuleConfigKey] WhoamiRequest [onNetCallback] country="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isRemote="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/configs/Config$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/Config;

    invoke-static {v0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->access$000(Lcom/netease/ntunisdk/unilogger/configs/Config;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i_inner(Ljava/lang/String;)V

    .line 247
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 248
    sput-object p2, Lcom/netease/ntunisdk/unilogger/global/GlobalPrarm;->region:Ljava/lang/String;

    .line 249
    iget-object p1, p0, Lcom/netease/ntunisdk/unilogger/configs/Config$1;->this$0:Lcom/netease/ntunisdk/unilogger/configs/Config;

    invoke-static {p1}, Lcom/netease/ntunisdk/unilogger/configs/Config;->access$100(Lcom/netease/ntunisdk/unilogger/configs/Config;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "region"

    invoke-virtual {p1, p2, v1, v0}, Lcom/netease/ntunisdk/unilogger/configs/Config;->containValueFromConfigKey(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
