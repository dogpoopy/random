.class Lcom/netease/unisdk/gmbridge5/GmBridge$7;
.super Ljava/lang/Object;
.source "GmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/GmBridge;->setLanguage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

.field final synthetic val$language:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/GmBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 280
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$7;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$7;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$7;->this$0:Lcom/netease/unisdk/gmbridge5/GmBridge;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/GmBridge;->access$800(Lcom/netease/unisdk/gmbridge5/GmBridge;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/GmBridge$7;->val$language:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->loadData(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    return-void
.end method
