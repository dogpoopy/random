.class Lcom/netease/mpay/oversea/MpayActivity$a;
.super Ljava/lang/Object;
.source "MpayActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/netease/mpay/oversea/MpayActivity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayActivity$a;->b:Lcom/netease/mpay/oversea/MpayActivity;

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayActivity$a;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$a;->b:Lcom/netease/mpay/oversea/MpayActivity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/bc;->a(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$a;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/View;I)V

    const/4 v0, 0x1

    return v0
.end method
