.class Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$2;
.super Ljava/lang/Object;
.source "ConfirmHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

.field final synthetic val$toggleButton:Landroid/widget/ToggleButton;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;Landroid/widget/ToggleButton;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$2;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$2;->val$toggleButton:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$2;->val$toggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method
