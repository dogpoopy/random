.class Lcom/netease/unisdk/gmbridge5/GmBridge$3;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge;->setFloatBtnVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 179
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    iput-boolean p2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$400(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    new-instance v1, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$800(Lcom/netease/unisdk/gmbridge5/GmBridge;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    const/16 v4, 0x53

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;-><init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/GmBridge;I)V

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$402(Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->val$visible:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$400(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->show()V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$3;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$400(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->hide()V

    .line 190
    :goto_0
    return-void
.end method
