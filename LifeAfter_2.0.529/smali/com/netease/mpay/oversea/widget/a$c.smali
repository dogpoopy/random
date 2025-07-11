.class Lcom/netease/mpay/oversea/widget/a$c;
.super Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnInnerSpanClickListener;
.source "Alerter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

.field final synthetic b:Lcom/netease/mpay/oversea/widget/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/a;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$c;->b:Lcom/netease/mpay/oversea/widget/a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/a$c;->a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnInnerSpanClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFFRulesClicked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$c;->a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/widget/OnSpanClickListener;->onFFRulesClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOutLinkClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/netease/mpay/oversea/widget/a$c;->b:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {p2}, Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/widget/a;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/a$c;->b:Lcom/netease/mpay/oversea/widget/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/widget/a;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$c;->a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/widget/OnSpanClickListener;->onOutLinkClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onRealnameClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$c;->a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/netease/mpay/oversea/widget/OnSpanClickListener;->onRealnameClicked()V

    :cond_0
    return-void
.end method

.method public onUrsRealnameClicked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$c;->a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/widget/OnSpanClickListener;->onUrsRealnameClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
