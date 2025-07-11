.class public Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickWithOutLinkListener;
.super Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;
.source "NtSdkTagParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSpanClickWithOutLinkListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 2

    const-string v0, "UniSDK NtSdkTagParser"

    const-string v1, "OnSpanClickWithOutLinkListener: onUrsRealnameClicked"

    .line 296
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
