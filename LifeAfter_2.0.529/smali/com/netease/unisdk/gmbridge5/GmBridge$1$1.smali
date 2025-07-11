.class Lcom/netease/unisdk/gmbridge5/GmBridge$1$1;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$1;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/GmBridge$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/gmbridge5/GmBridge$1;

    .line 100
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1$1;->this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1$1;->this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$1;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$1$1;->this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$1;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge5/GmBridge$1;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$300(Lcom/netease/unisdk/gmbridge5/GmBridge;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->openGMPage(Ljava/lang/String;)V

    .line 104
    return-void
.end method
