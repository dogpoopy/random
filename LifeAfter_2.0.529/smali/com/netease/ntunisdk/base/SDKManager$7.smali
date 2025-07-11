.class Lcom/netease/ntunisdk/base/SDKManager$7;
.super Ljava/lang/Object;
.source "SDKManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SDKManager;->onOpenExitViewFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SDKManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SDKManager;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$7;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 706
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$7;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/SDKManager;->exitApp()V

    return-void
.end method
