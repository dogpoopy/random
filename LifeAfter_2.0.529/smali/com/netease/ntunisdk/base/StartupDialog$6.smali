.class final Lcom/netease/ntunisdk/base/StartupDialog$6;
.super Ljava/lang/Object;
.source "StartupDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/StartupDialog;-><init>(Landroid/content/Context;IIILcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;ZLcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/AlphaAnimation;

.field final synthetic b:Lcom/netease/ntunisdk/base/StartupDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/StartupDialog;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$6;->b:Lcom/netease/ntunisdk/base/StartupDialog;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/StartupDialog$6;->a:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/netease/ntunisdk/base/StartupDialog$6;->b:Lcom/netease/ntunisdk/base/StartupDialog;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/StartupDialog;->b(Lcom/netease/ntunisdk/base/StartupDialog;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/StartupDialog$6;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
