.class Lcom/netease/mpay/oversea/ui/b0$a$a$a;
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a$a$a;->a:Lcom/netease/mpay/oversea/ui/b0$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/b0$a$a$a;->a:Lcom/netease/mpay/oversea/ui/b0$a$a;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/b0$a$a;->b:Lcom/netease/mpay/oversea/ui/b0$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/b0$a$a;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/ui/b0$a;->a(Lcom/netease/mpay/oversea/ui/b0$a;Ljava/lang/String;)V

    return-void
.end method
