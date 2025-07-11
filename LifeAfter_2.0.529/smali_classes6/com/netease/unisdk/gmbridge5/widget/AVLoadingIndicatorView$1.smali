.class Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;
.super Ljava/lang/Object;
.source "AVLoadingIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    .line 38
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;->this$0:Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;->this$0:Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->access$002(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;Z)Z

    .line 43
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;->this$0:Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->access$102(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;J)J

    .line 44
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;->this$0:Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 45
    return-void
.end method
