.class Lcom/netease/mpay/oversea/ic$b;
.super Ljava/lang/Object;
.source "WelcomeAlerter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ic;->a(Landroid/app/Dialog;Landroid/view/View;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ic;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ic$b;->a:Lcom/netease/mpay/oversea/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ic$b;->a:Lcom/netease/mpay/oversea/ic;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ic;->b(Lcom/netease/mpay/oversea/ic;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ic$b;->a:Lcom/netease/mpay/oversea/ic;

    invoke-static {v1}, Lcom/netease/mpay/oversea/ic;->d(Lcom/netease/mpay/oversea/ic;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
