.class Lcom/netease/unisdk/gmbridge5/GmBridge$4;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge;->receiveMessage(Ljava/lang/String;)V
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

    .line 218
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$4;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$4;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$400(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$4;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$100(Lcom/netease/unisdk/gmbridge5/GmBridge;)Lcom/netease/unisdk/gmbridge5/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getRedIds()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->showRed([Ljava/lang/String;)V

    .line 222
    return-void
.end method
