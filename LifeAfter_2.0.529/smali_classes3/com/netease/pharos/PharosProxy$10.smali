.class Lcom/netease/pharos/PharosProxy$10;
.super Ljava/lang/Object;
.source "PharosProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/PharosProxy;->wrapTask(Lorg/json/JSONObject;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/PharosProxy;

.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONObject;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy$10;->this$0:Lcom/netease/pharos/PharosProxy;

    iput-object p2, p0, Lcom/netease/pharos/PharosProxy$10;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy$10;->this$0:Lcom/netease/pharos/PharosProxy;

    iget-object v1, p0, Lcom/netease/pharos/PharosProxy$10;->val$jsonObject:Lorg/json/JSONObject;

    const-string v2, "qos_ips"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/PharosProxy;->access$202(Lcom/netease/pharos/PharosProxy;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 596
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy$10;->val$jsonObject:Lorg/json/JSONObject;

    const-string v1, "duration"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 597
    iget-object v2, p0, Lcom/netease/pharos/PharosProxy$10;->this$0:Lcom/netease/pharos/PharosProxy;

    invoke-static {v2}, Lcom/netease/pharos/PharosProxy;->access$200(Lcom/netease/pharos/PharosProxy;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/netease/pharos/PharosProxy;->pharosqosexec(Lorg/json/JSONArray;J)V

    return-void
.end method
