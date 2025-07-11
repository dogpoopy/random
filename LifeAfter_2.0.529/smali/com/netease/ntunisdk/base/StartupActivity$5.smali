.class final Lcom/netease/ntunisdk/base/StartupActivity$5;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/StartupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/netease/ntunisdk/base/StartupActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/StartupActivity;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupActivity$5;->b:Lcom/netease/ntunisdk/base/StartupActivity;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/StartupActivity$5;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "UniSDK Base"

    const-string v0, "onAnimationEnd!"

    .line 200
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupActivity$5;->a:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupActivity$5;->b:Lcom/netease/ntunisdk/base/StartupActivity;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/StartupActivity;->finish()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
