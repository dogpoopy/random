.class Lcom/netease/mpay/oversea/y8$a$a;
.super Ljava/lang/Object;
.source "RegisterHome.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/y8$a;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/netease/mpay/oversea/y8$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/y8$a;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/y8$a$a;->d:Lcom/netease/mpay/oversea/y8$a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/y8$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/y8$a$a;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/mpay/oversea/y8$a$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/y8$a$a;->d:Lcom/netease/mpay/oversea/y8$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/y8$a;->j:Lcom/netease/mpay/oversea/y8;

    iget-object p2, p0, Lcom/netease/mpay/oversea/y8$a$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/y8$a$a;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/y8$a$a;->c:Z

    invoke-static {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/y8;->a(Lcom/netease/mpay/oversea/y8;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
