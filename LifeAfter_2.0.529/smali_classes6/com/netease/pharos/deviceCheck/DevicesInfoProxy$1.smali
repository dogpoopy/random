.class Lcom/netease/pharos/deviceCheck/DevicesInfoProxy$1;
.super Ljava/lang/Object;
.source "DevicesInfoProxy.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;->start()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy$1;->this$0:Lcom/netease/pharos/deviceCheck/DevicesInfoProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/netease/pharos/deviceCheck/Ipv6Verify;->getInstance()Lcom/netease/pharos/deviceCheck/Ipv6Verify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/deviceCheck/Ipv6Verify;->start()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/netease/pharos/deviceCheck/DevicesInfoProxy$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
