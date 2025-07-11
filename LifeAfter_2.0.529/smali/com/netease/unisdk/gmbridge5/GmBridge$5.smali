.class Lcom/netease/unisdk/gmbridge5/GmBridge$5;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge;->showLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/GmBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 254
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$5;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$5;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$900(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$5;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    new-instance v1, Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$800(Lcom/netease/unisdk/gmbridge5/GmBridge;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$902(Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$5;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$900(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;->show()V

    .line 261
    return-void
.end method
