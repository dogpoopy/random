.class Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$5;
.super Ljava/lang/Object;
.source "ConfirmHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->initTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$5;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$5;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$800(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
