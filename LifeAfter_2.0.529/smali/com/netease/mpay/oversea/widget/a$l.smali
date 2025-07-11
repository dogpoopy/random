.class Lcom/netease/mpay/oversea/widget/a$l;
.super Ljava/lang/Object;
.source "Alerter.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/d;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic f:Z

.field final synthetic g:Lcom/netease/mpay/oversea/widget/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$l;->g:Lcom/netease/mpay/oversea/widget/a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/a$l;->a:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/netease/mpay/oversea/widget/a$l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/widget/a$l;->c:Landroid/content/DialogInterface$OnClickListener;

    iput-object p5, p0, Lcom/netease/mpay/oversea/widget/a$l;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/oversea/widget/a$l;->e:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p7, p0, Lcom/netease/mpay/oversea/widget/a$l;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$l;->g:Lcom/netease/mpay/oversea/widget/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/a$l;->a:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/netease/mpay/oversea/widget/a$l;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/widget/a$l;->c:Landroid/content/DialogInterface$OnClickListener;

    iget-object v4, p0, Lcom/netease/mpay/oversea/widget/a$l;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/widget/a$l;->e:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v6, p0, Lcom/netease/mpay/oversea/widget/a$l;->f:Z

    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
