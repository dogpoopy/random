.class Lcom/netease/mpay/oversea/b5$f;
.super Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnInnerSpanClickListener;
.source "LVUPersonInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b5;->a(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/b5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5$f;->a:Lcom/netease/mpay/oversea/b5;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnInnerSpanClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFFRulesClicked(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOutLinkClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p2

    const-string p3, "child_protection_policy"

    const-string v0, "child_protection"

    invoke-virtual {p2, v0, p3}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$f;->a:Lcom/netease/mpay/oversea/b5;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b5;->d(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 5
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netease/mpay/oversea/b5$f;->a:Lcom/netease/mpay/oversea/b5;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b5;->A(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/p1;->e:Ljava/lang/String;

    aput-object v1, v0, p3

    iget-object p3, p0, Lcom/netease/mpay/oversea/b5$f;->a:Lcom/netease/mpay/oversea/b5;

    invoke-static {p3}, Lcom/netease/mpay/oversea/b5;->z(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/mpay/oversea/p1;->e:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iget-object p3, p0, Lcom/netease/mpay/oversea/b5$f;->a:Lcom/netease/mpay/oversea/b5;

    invoke-static {p3}, Lcom/netease/mpay/oversea/b5;->t(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/mpay/oversea/p1;->e:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const-string p3, "%s%s%s"

    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "birthday"

    .line 7
    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/netease/mpay/oversea/b5$f;->a:Lcom/netease/mpay/oversea/b5;

    invoke-static {p2}, Lcom/netease/mpay/oversea/b5;->b(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/d1;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/netease/mpay/oversea/b5$f;->a:Lcom/netease/mpay/oversea/b5;

    invoke-static {p2}, Lcom/netease/mpay/oversea/b5;->b(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/d1;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/mpay/oversea/d1;->b:Ljava/lang/String;

    const-string v0, "iso_code"

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    invoke-static {p1, p3}, Lcom/netease/mpay/oversea/wa;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "open:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/netease/mpay/oversea/b5$f;->a:Lcom/netease/mpay/oversea/b5;

    invoke-static {p2}, Lcom/netease/mpay/oversea/b5;->e(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$f;->a:Lcom/netease/mpay/oversea/b5;

    .line 14
    invoke-static {v0}, Lcom/netease/mpay/oversea/b5;->f(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v2, 0x0

    invoke-direct {p3, p1, v0, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ui/w$a;)V

    .line 15
    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/ui/x;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    return v1

    :cond_1
    return p3
.end method

.method public onRealnameClicked()V
    .locals 0

    return-void
.end method

.method public onUrsRealnameClicked(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
