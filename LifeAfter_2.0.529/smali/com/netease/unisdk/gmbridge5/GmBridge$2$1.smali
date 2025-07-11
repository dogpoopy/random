.class Lcom/netease/unisdk/gmbridge5/GmBridge$2$1;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$2;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/GmBridge$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/gmbridge5/GmBridge$2;

    .line 145
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2$1;->this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$2;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2$1;->this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$2;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$2$1;->this$1:Lcom/netease/unisdk/gmbridge5/GmBridge$2;

    iget-boolean v2, v2, Lcom/netease/unisdk/gmbridge5/GmBridge$2;->val$hasCutout:Z

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$700(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;Z)V

    .line 149
    return-void
.end method
