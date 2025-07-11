.class Lcom/netease/ntunisdk/ui/NgWebviewActivity$13;
.super Ljava/lang/Object;
.source "NgWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ui/NgWebviewActivity;->initNgwebviewCloseBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ui/NgWebviewActivity;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$13;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 932
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "methodId"

    const-string v1, "setWebviewState"

    .line 933
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 934
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$13;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->access$200(Lcom/netease/ntunisdk/ui/NgWebviewActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 936
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 940
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/ui/NgWebviewActivity$13;->this$0:Lcom/netease/ntunisdk/ui/NgWebviewActivity;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/ui/NgWebviewActivity;->closeWebview()V

    return-void
.end method
