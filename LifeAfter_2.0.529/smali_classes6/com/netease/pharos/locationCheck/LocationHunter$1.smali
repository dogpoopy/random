.class Lcom/netease/pharos/locationCheck/LocationHunter$1;
.super Ljava/lang/Object;
.source "LocationHunter.java"

# interfaces
.implements Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/locationCheck/LocationHunter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/locationCheck/LocationHunter;


# direct methods
.method constructor <init>(Lcom/netease/pharos/locationCheck/LocationHunter;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/netease/pharos/locationCheck/LocationHunter$1;->this$0:Lcom/netease/pharos/locationCheck/LocationHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/netease/pharos/config/CheckResult;)V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationHunter \u56de\u8c03\u7ed3\u679c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/pharos/config/CheckResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationHunter"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/netease/pharos/locationCheck/RecheckResult;->getInstance()Lcom/netease/pharos/locationCheck/RecheckResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/locationCheck/RecheckResult;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
