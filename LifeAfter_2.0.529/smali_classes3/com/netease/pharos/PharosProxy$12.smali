.class Lcom/netease/pharos/PharosProxy$12;
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

    .line 609
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy$12;->this$0:Lcom/netease/pharos/PharosProxy;

    iput-object p2, p0, Lcom/netease/pharos/PharosProxy$12;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy$12;->this$0:Lcom/netease/pharos/PharosProxy;

    iget-object v1, p0, Lcom/netease/pharos/PharosProxy$12;->val$jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/PharosProxy;->pharosLoginInfoUpload(Lorg/json/JSONObject;)V

    return-void
.end method
