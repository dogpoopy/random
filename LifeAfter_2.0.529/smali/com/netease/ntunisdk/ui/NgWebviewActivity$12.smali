.class Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;
.super Ljava/lang/Object;
.source "NgWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ui/NgWebviewActivity;->saveWebImg(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

.field final synthetic val$flag:Z

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;->val$flag:Z

    iput-object p3, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;->val$identifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 816
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;->val$flag:Z

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->access$500(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 818
    iget-object v1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-static {v1, v1, v0}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->access$600(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "success"

    goto :goto_0

    :cond_0
    const-string v0, "failed"

    .line 824
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "result"

    .line 826
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 827
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    iget-object v2, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$12;->val$identifier:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->access$700(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 829
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
