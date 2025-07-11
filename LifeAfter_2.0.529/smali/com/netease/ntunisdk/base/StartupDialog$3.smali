.class final Lcom/netease/ntunisdk/base/StartupDialog$3;
.super Ljava/lang/Object;
.source "StartupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/StartupDialog;-><init>(Landroid/content/Context;IIILcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;ZLcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;

.field final synthetic b:Lcom/netease/ntunisdk/base/StartupDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/StartupDialog;Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$3;->b:Lcom/netease/ntunisdk/base/StartupDialog;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/StartupDialog$3;->a:Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$3;->a:Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;

    if-eqz p1, :cond_0

    const-string p1, "UniSDK Base"

    const-string v0, "click splash"

    .line 191
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/netease/ntunisdk/base/StartupDialog$3;->a:Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/StartupDialog$OnClickSplashFinishListener;->onClickSplash()V

    :cond_0
    return-void
.end method
