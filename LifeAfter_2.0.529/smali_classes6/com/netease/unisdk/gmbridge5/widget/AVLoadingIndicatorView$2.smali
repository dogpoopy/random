.class Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;
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

    .line 48
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;->this$0:Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;->this$0:Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->access$202(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;Z)Z

    .line 53
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;->this$0:Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->access$300(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;->this$0:Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->access$102(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;J)J

    .line 55
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;->this$0:Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 57
    :cond_0
    return-void
.end method
