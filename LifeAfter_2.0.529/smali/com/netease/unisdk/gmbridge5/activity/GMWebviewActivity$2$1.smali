.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2$1;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;

    .line 218
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$2;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->finish()V

    .line 222
    return-void
.end method
