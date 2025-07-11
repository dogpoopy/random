.class Lcom/netease/mpay/oversea/ui/j$a;
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/j$a;->b:Lcom/netease/mpay/oversea/ui/j;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p2, 0x0

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package:com.google.android.gms"

    .line 5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/j$a;->b:Lcom/netease/mpay/oversea/ui/j;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    const/16 v2, 0x21

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/j;

    iput-object p2, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/j$a;->b:Lcom/netease/mpay/oversea/ui/j;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    iget v0, p1, Lcom/netease/mpay/oversea/j;->a:I

    invoke-interface {p2, v0, p1}, Lcom/netease/mpay/oversea/q5;->a(ILcom/netease/mpay/oversea/j;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/j;

    iput-object p2, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 16
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/j$a;->b:Lcom/netease/mpay/oversea/ui/j;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    iget v0, p1, Lcom/netease/mpay/oversea/j;->a:I

    invoke-interface {p2, v0, p1}, Lcom/netease/mpay/oversea/q5;->a(ILcom/netease/mpay/oversea/j;)V

    :goto_0
    return-void

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/j;

    iput-object p2, v0, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 18
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/j$a;->b:Lcom/netease/mpay/oversea/ui/j;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/o;->d:Lcom/netease/mpay/oversea/ma;

    iget v1, v0, Lcom/netease/mpay/oversea/j;->a:I

    invoke-interface {p2, v1, v0}, Lcom/netease/mpay/oversea/q5;->a(ILcom/netease/mpay/oversea/j;)V

    .line 19
    throw p1
.end method
