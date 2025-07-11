.class Lcom/netease/mpay/oversea/w9$i$b;
.super Ljava/lang/Object;
.source "SecurityInputCodeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/w9$i;->a(Lcom/netease/mpay/oversea/l9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/l9;

.field final synthetic b:Lcom/netease/mpay/oversea/w9$i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/w9$i;Lcom/netease/mpay/oversea/l9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/w9$i$b;->b:Lcom/netease/mpay/oversea/w9$i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/w9$i$b;->a:Lcom/netease/mpay/oversea/l9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/w9$i$b;->b:Lcom/netease/mpay/oversea/w9$i;

    iget-object p1, p1, Lcom/netease/mpay/oversea/w9$i;->d:Lcom/netease/mpay/oversea/w9;

    iget-object p2, p0, Lcom/netease/mpay/oversea/w9$i$b;->a:Lcom/netease/mpay/oversea/l9;

    iget-object v0, p2, Lcom/netease/mpay/oversea/l9;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/l9;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/w9;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
