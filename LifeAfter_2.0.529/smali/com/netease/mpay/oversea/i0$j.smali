.class Lcom/netease/mpay/oversea/i0$j;
.super Ljava/lang/Object;
.source "BindView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/i0;->d(Lcom/netease/mpay/oversea/g6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/g6;

.field final synthetic b:Lcom/netease/mpay/oversea/i0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/i0;Lcom/netease/mpay/oversea/g6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i0$j;->b:Lcom/netease/mpay/oversea/i0;

    iput-object p2, p0, Lcom/netease/mpay/oversea/i0$j;->a:Lcom/netease/mpay/oversea/g6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/i0$j;->b:Lcom/netease/mpay/oversea/i0;

    iget-object p2, p0, Lcom/netease/mpay/oversea/i0$j;->a:Lcom/netease/mpay/oversea/g6;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/i0;->a(Lcom/netease/mpay/oversea/i0;Lcom/netease/mpay/oversea/g6;)V

    return-void
.end method
