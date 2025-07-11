.class Lcom/netease/mpay/oversea/ui/j$b;
.super Ljava/lang/Object;
.source "GoogleLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/j;->a(Lcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/j;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/j;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/j;Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/j$b;->b:Lcom/netease/mpay/oversea/ui/j;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/j$b;->a:Lcom/netease/mpay/oversea/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/j$b;->a:Lcom/netease/mpay/oversea/j;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/j$b;->b:Lcom/netease/mpay/oversea/ui/j;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    iget v0, p1, Lcom/netease/mpay/oversea/j;->a:I

    invoke-interface {p2, v0, p1}, Lcom/netease/mpay/oversea/q5;->a(ILcom/netease/mpay/oversea/j;)V

    return-void
.end method
