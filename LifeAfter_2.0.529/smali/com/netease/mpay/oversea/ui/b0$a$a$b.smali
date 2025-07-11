.class Lcom/netease/mpay/oversea/ui/b0$a$a$b;
.super Ljava/lang/Object;
.source "WebViewLoginHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/b0$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/b0$a$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/b0$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a$a$b;->a:Lcom/netease/mpay/oversea/ui/b0$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a$a$b;->a:Lcom/netease/mpay/oversea/ui/b0$a$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/b0$a$a;->b:Lcom/netease/mpay/oversea/ui/b0$a;

    new-instance p2, Lcom/netease/mpay/oversea/j;

    const/16 v0, 0x2711

    const-string v1, ""

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/b0$a;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method
