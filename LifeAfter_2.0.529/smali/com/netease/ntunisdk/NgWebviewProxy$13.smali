.class Lcom/netease/ntunisdk/NgWebviewProxy$13;
.super Ljava/lang/Object;
.source "NgWebviewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/NgWebviewProxy;->saveWebImg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/NgWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$13;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    iput-object p2, p0, Lcom/netease/ntunisdk/NgWebviewProxy$13;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/NgWebviewProxy$13;->val$identifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$13;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$13;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$1000(Lcom/netease/ntunisdk/NgWebviewProxy;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/netease/ntunisdk/NgWebviewProxy$13;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$1100(Lcom/netease/ntunisdk/NgWebviewProxy;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$1200(Lcom/netease/ntunisdk/NgWebviewProxy;Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 648
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 650
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "result"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "failed"

    .line 651
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v0, "success"

    .line 653
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/NgWebviewProxy$13;->this$0:Lcom/netease/ntunisdk/NgWebviewProxy;

    iget-object v2, p0, Lcom/netease/ntunisdk/NgWebviewProxy$13;->val$identifier:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/netease/ntunisdk/NgWebviewProxy;->access$1300(Lcom/netease/ntunisdk/NgWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 658
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
