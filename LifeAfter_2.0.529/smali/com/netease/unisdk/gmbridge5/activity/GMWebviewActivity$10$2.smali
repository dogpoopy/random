.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$2;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->onHideCustomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    .line 491
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$2;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$2;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    sget v1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ORIENTATION:I

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->setRequestedOrientation(I)V

    .line 495
    return-void
.end method
