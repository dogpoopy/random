.class final Lcom/netease/ntunisdk/base/StartupActivity$2;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/StartupActivity;->popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/netease/ntunisdk/base/StartupActivity$2;->a:Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishListener()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/base/StartupActivity$2;->a:Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;->finishListener()V

    :cond_0
    return-void
.end method
