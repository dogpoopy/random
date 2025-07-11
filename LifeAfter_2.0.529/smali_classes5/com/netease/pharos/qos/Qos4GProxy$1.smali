.class Lcom/netease/pharos/qos/Qos4GProxy$1;
.super Ljava/lang/Object;
.source "Qos4GProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/qos/Qos4GProxy;->pharosqosexec(Lorg/json/JSONArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/Qos4GProxy;

.field final synthetic val$duration:J

.field final synthetic val$ips:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/Qos4GProxy;Lorg/json/JSONArray;J)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->this$0:Lcom/netease/pharos/qos/Qos4GProxy;

    iput-object p2, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->val$ips:Lorg/json/JSONArray;

    iput-wide p3, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->this$0:Lcom/netease/pharos/qos/Qos4GProxy;

    iget-object v1, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->val$ips:Lorg/json/JSONArray;

    iget-wide v2, p0, Lcom/netease/pharos/qos/Qos4GProxy$1;->val$duration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/pharos/qos/Qos4GProxy;->pharosqosexec2(Lorg/json/JSONArray;J)V

    return-void
.end method
