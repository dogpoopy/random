.class Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;
.super Ljava/lang/Object;
.source "Alerters.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/widgets/Alerters;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/widgets/Alerters;

.field final synthetic val$alert:Landroid/app/AlertDialog;

.field final synthetic val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$negative:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/widgets/Alerters;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;->this$0:Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;->val$alert:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;->val$negative:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;->val$alert:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 90
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;->val$negative:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
