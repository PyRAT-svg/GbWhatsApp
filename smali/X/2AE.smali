.class public final LX/2AE;
.super LX/1dN;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LX/1dN<",
        "LX/2H5;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LX/1dN;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic A00(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->A01()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic A01(Landroid/content/Context;Landroid/os/Looper;LX/0NL;Ljava/lang/Object;LX/0Ln;LX/0Lo;)LX/1dO;
    .locals 7

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v0, LX/2H5;

    move-object v6, p6

    move-object v5, p5

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LX/2H5;-><init>(Landroid/content/Context;Landroid/os/Looper;LX/0NL;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;LX/0Ln;LX/0Lo;)V

    return-object v0
.end method
