.class public Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnInnerSpanClickListener;
.super Ljava/lang/Object;
.source "NtSdkTagParser.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/OnSpanClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/widget/NtSdkTagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnInnerSpanClickListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFFRulesClicked(Ljava/lang/String;)V
    .locals 0

    const-string p1, "OnSpanClickWithOutLinkListener: onFFRulesClicked"

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onOpenProtocol(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "OnSpanClickWithOutLinkListener: onOpenProtocol"

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onOutLinkClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRealnameClicked()V
    .locals 1

    const-string v0, "OnSpanClickWithOutLinkListener: onRealnameClicked"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onUrsRealnameClicked(Ljava/lang/String;)V
    .locals 0

    const-string p1, "OnSpanClickWithOutLinkListener: onUrsRealnameClicked"

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method
