.class final Lcom/netease/ntunisdk/base/StartupActivity$6;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic b:Landroid/view/animation/AlphaAnimation;

.field final synthetic c:Lcom/netease/ntunisdk/base/StartupActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/StartupActivity;Landroid/widget/RelativeLayout;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupActivity$6;->c:Lcom/netease/ntunisdk/base/StartupActivity;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/StartupActivity$6;->a:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/StartupActivity$6;->b:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/netease/ntunisdk/base/StartupActivity$6;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/StartupActivity$6;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
