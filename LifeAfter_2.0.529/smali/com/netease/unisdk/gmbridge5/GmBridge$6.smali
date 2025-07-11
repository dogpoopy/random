.class Lcom/netease/unisdk/gmbridge5/GmBridge$6;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge;->hideLoadingDialog()V
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

    .line 267
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$6;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$6;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$900(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$6;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$900(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;->destroy()V

    .line 272
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$6;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$902(Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;)Lcom/netease/unisdk/gmbridge5/view/LoadingDialog;

    .line 274
    :cond_0
    return-void
.end method
