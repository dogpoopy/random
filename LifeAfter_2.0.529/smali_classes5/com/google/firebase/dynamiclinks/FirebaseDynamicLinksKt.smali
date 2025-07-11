.class public final Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinksKt;
.super Ljava/lang/Object;
.source "FirebaseDynamicLinks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a#\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\u001a+\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\u001a\u000f\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u0010H\u0086\u0002\u001a\u000f\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u0011H\u0086\u0002\u001a\r\u0010\u0012\u001a\u00020\u0013*\u00020\u0010H\u0086\u0002\u001a\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u000f*\u00020\u0011H\u0086\u0002\u001a\r\u0010\u0014\u001a\u00020\u0015*\u00020\u0010H\u0086\u0002\u001a\u0013\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016*\u00020\u0011H\u0086\u0002\u001a#\u0010\u0018\u001a\u00020\u0019*\u00020\u00012\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u001b\u001a#\u0010\u001c\u001a\u00020\u0006*\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\u001a;\u0010\u001c\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\r2\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\u001a+\u0010!\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\"\u001a\u00020\r2\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\u001a#\u0010$\u001a\u00020\u0006*\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\u001a#\u0010&\u001a\u00020\u0006*\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\u001a)\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00110)*\u00020\u00012\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\u001a1\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00110)*\u00020\u00012\u0006\u0010*\u001a\u00020\u00132\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\u001a#\u0010+\u001a\u00020\u0006*\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00060\t\u00a2\u0006\u0002\u0008\u000b\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006-"
    }
    d2 = {
        "dynamicLinks",
        "Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;",
        "Lcom/google/firebase/Firebase;",
        "getDynamicLinks",
        "(Lcom/google/firebase/Firebase;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;",
        "androidParameters",
        "",
        "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
        "init",
        "Lkotlin/Function1;",
        "Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;",
        "Lkotlin/ExtensionFunctionType;",
        "packageName",
        "",
        "component1",
        "Landroid/net/Uri;",
        "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
        "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
        "component2",
        "",
        "component3",
        "",
        "",
        "Lcom/google/firebase/dynamiclinks/ShortDynamicLink$Warning;",
        "dynamicLink",
        "Lcom/google/firebase/dynamiclinks/DynamicLink;",
        "app",
        "Lcom/google/firebase/FirebaseApp;",
        "googleAnalyticsParameters",
        "Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;",
        "source",
        "medium",
        "campaign",
        "iosParameters",
        "bundleId",
        "Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;",
        "itunesConnectAnalyticsParameters",
        "Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;",
        "navigationInfoParameters",
        "Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;",
        "shortLinkAsync",
        "Lcom/google/android/gms/tasks/Task;",
        "suffix",
        "socialMetaTagParameters",
        "Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;",
        "com.google.firebase-firebase-dynamic-links"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final androidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;

    invoke-direct {v0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setAndroidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final androidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;-><init>()V

    .line 39
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setAndroidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final component1(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Landroid/net/Uri;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final component1(Lcom/google/firebase/dynamiclinks/ShortDynamicLink;)Landroid/net/Uri;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-interface {p0}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->getShortLink()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final component2(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getMinimumAppVersion()I

    move-result p0

    return p0
.end method

.method public static final component2(Lcom/google/firebase/dynamiclinks/ShortDynamicLink;)Landroid/net/Uri;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-interface {p0}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->getPreviewLink()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final component3(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getClickTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final component3(Lcom/google/firebase/dynamiclinks/ShortDynamicLink;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink$Warning;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-interface {p0}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->getWarnings()Ljava/util/List;

    move-result-object p0

    const-string v0, "warnings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final dynamicLink(Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/dynamiclinks/DynamicLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/dynamiclinks/DynamicLink;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "init"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->createDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    move-result-object p0

    const-string v0, "getInstance().createDynamicLink()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->buildDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink;

    move-result-object p0

    const-string p1, "builder.buildDynamicLink()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final dynamicLinks(Lcom/google/firebase/Firebase;Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "app"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    const-string p1, "getInstance(app)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getDynamicLinks(Lcom/google/firebase/Firebase;)Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    const-string v0, "getInstance()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final googleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "medium"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaign"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setGoogleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final googleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;-><init>()V

    .line 77
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setGoogleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final iosParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundleId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    invoke-direct {v0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setIosParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final itunesConnectAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;-><init>()V

    .line 104
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setItunesConnectAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final navigationInfoParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;-><init>()V

    .line 128
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setNavigationInfoParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method

.method public static final shortLinkAsync(Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;ILkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "init"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->createDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    move-result-object p0

    const-string v0, "getInstance().createDynamicLink()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->buildShortDynamicLink(I)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    const-string p1, "builder.buildShortDynamicLink(suffix)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final shortLinkAsync(Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;Lkotlin/jvm/functions/Function1;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "init"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->getInstance()Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/FirebaseDynamicLinks;->createDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    move-result-object p0

    const-string v0, "getInstance().createDynamicLink()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->buildShortDynamicLink()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    const-string p1, "builder.buildShortDynamicLink()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final socialMetaTagParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;-><init>()V

    .line 116
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v0}, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters$Builder;->build()Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->setSocialMetaTagParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;

    return-void
.end method
