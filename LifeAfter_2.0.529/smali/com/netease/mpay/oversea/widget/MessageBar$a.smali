.class Lcom/netease/mpay/oversea/widget/MessageBar$a;
.super Ljava/lang/Object;
.source "MessageBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/widget/MessageBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/widget/MessageBar;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/MessageBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/MessageBar$a;->a:Lcom/netease/mpay/oversea/widget/MessageBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/MessageBar$a;->a:Lcom/netease/mpay/oversea/widget/MessageBar;

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/MessageBar;->b(Lcom/netease/mpay/oversea/widget/MessageBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/MessageBar$a;->a:Lcom/netease/mpay/oversea/widget/MessageBar;

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/MessageBar;->a(Lcom/netease/mpay/oversea/widget/MessageBar;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
