.class Lcom/netease/neox/PluginNeoXView$1;
.super Ljava/lang/Object;
.source "PluginNeoXView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginNeoXView;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginNeoXView;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginNeoXView;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netease/neox/PluginNeoXView$1;->this$0:Lcom/netease/neox/PluginNeoXView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/netease/neox/PluginNeoXView$1;->this$0:Lcom/netease/neox/PluginNeoXView;

    invoke-static {v0}, Lcom/netease/neox/PluginNeoXView;->access$000(Lcom/netease/neox/PluginNeoXView;)Lcom/netease/neox/NeoXView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/netease/neox/PluginNeoXView$1;->this$0:Lcom/netease/neox/PluginNeoXView;

    invoke-static {v0}, Lcom/netease/neox/PluginNeoXView;->access$000(Lcom/netease/neox/PluginNeoXView;)Lcom/netease/neox/NeoXView;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/netease/neox/NeoXView;->delayedHide(I)V

    :cond_0
    return-void
.end method
