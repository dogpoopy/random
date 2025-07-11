.class public Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickWithOutLinkListener;
.super Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSpanClickWithOutLinkListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUrsRealnameClicked(Ljava/lang/String;)V
    .locals 0

    const-string p1, "OnSpanClickWithOutLinkListener: onUrsRealnameClicked"

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    return-void
.end method
