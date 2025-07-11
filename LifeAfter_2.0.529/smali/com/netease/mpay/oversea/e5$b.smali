.class Lcom/netease/mpay/oversea/e5$b;
.super Ljava/lang/Object;
.source "LinkAccountService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/e5;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/q0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/q0;

.field final synthetic c:Lcom/netease/mpay/oversea/e5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/e5;Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/e5$b;->c:Lcom/netease/mpay/oversea/e5;

    iput-object p2, p0, Lcom/netease/mpay/oversea/e5$b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/e5$b;->b:Lcom/netease/mpay/oversea/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/e5$b;->c:Lcom/netease/mpay/oversea/e5;

    iget-object p2, p0, Lcom/netease/mpay/oversea/e5$b;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/e5$b;->b:Lcom/netease/mpay/oversea/q0;

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/e5;->a(Lcom/netease/mpay/oversea/e5;Landroid/app/Activity;Lcom/netease/mpay/oversea/q0;)V

    return-void
.end method
