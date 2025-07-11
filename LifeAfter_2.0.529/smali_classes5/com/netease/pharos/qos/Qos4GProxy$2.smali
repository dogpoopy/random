.class Lcom/netease/pharos/qos/Qos4GProxy$2;
.super Ljava/lang/Object;
.source "Qos4GProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/qos/Qos4GProxy;->cancel(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/Qos4GProxy;

.field final synthetic val$ips:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/Qos4GProxy;Lorg/json/JSONArray;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->this$0:Lcom/netease/pharos/qos/Qos4GProxy;

    iput-object p2, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->val$ips:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->this$0:Lcom/netease/pharos/qos/Qos4GProxy;

    iget-object v1, p0, Lcom/netease/pharos/qos/Qos4GProxy$2;->val$ips:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/netease/pharos/qos/Qos4GProxy;->access$000(Lcom/netease/pharos/qos/Qos4GProxy;Lorg/json/JSONArray;)V

    return-void
.end method
