.class public final LX/3IC;
.super LX/2Hg;
.source ""

# interfaces
.implements LX/0Wj;


# static fields
.field public static final A0D:LX/3IC;

.field public static volatile A0E:LX/0Wk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LX/0Wk<",
            "LX/3IC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Ljava/lang/String;

.field public A03:LX/3He;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public A06:I

.field public A07:LX/0WO;

.field public A08:Ljava/lang/String;

.field public A09:I

.field public A0A:I

.field public A0B:Ljava/lang/String;

.field public A0C:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LX/3IC;

    invoke-direct {v0}, LX/3IC;-><init>()V

    sput-object v0, LX/3IC;->A0D:LX/3IC;

    invoke-virtual {v0}, LX/2Hg;->A09()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LX/2Hg;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LX/3IC;->A0B:Ljava/lang/String;

    iput-object v0, p0, LX/3IC;->A08:Ljava/lang/String;

    iput-object v0, p0, LX/3IC;->A02:Ljava/lang/String;

    iput-object v0, p0, LX/3IC;->A04:Ljava/lang/String;

    iput-object v0, p0, LX/3IC;->A0C:Ljava/lang/String;

    sget-object v0, LX/0WO;->A00:LX/0WO;

    iput-object v0, p0, LX/3IC;->A07:LX/0WO;

    return-void
.end method

.method public static synthetic A06(LX/3IC;LX/34C;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, LX/3IC;->A01:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, LX/3IC;->A01:I

    iget v0, p1, LX/34C;->value:I

    iput v0, p0, LX/3IC;->A09:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static synthetic A07(LX/3IC;LX/0WO;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, LX/3IC;->A01:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, LX/3IC;->A01:I

    iput-object p1, p0, LX/3IC;->A07:LX/0WO;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0R(LX/0WY;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    move-object/from16 v11, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v1, 0x800

    const/4 v0, 0x0

    const/16 v14, 0x200

    const/16 v10, 0x100

    const/16 v9, 0x80

    const/16 v8, 0x40

    const/16 v7, 0x20

    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, LX/3IC;->A0E:LX/0Wk;

    if-nez v0, :cond_1

    const-class v2, LX/3IC;

    monitor-enter v2

    :try_start_0
    sget-object v0, LX/3IC;->A0E:LX/0Wk;

    if-nez v0, :cond_0

    new-instance v1, LX/2Cn;

    sget-object v0, LX/3IC;->A0D:LX/3IC;

    invoke-direct {v1, v0}, LX/2Cn;-><init>(LX/2Hg;)V

    sput-object v1, LX/3IC;->A0E:LX/0Wk;

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    sget-object v0, LX/3IC;->A0E:LX/0Wk;

    return-object v0

    :pswitch_1
    new-instance v0, LX/3IB;

    invoke-direct {v0}, LX/3IB;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, LX/3IC;

    invoke-direct {v0}, LX/3IC;-><init>()V

    return-object v0

    :pswitch_3
    return-object v0

    :pswitch_4
    check-cast v13, LX/0WP;

    check-cast v12, LX/0WT;

    const/4 v15, 0x0

    :goto_1
    if-nez v15, :cond_7

    :try_start_1
    invoke-virtual {v13}, LX/0WP;->A06()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v11, v0, v13}, LX/2Hg;->A0C(ILX/0WP;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_4

    :sswitch_0
    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v0, v1

    iput v0, v11, LX/3IC;->A01:I

    invoke-virtual {v13}, LX/0WP;->A0J()Z

    move-result v0

    iput-boolean v0, v11, LX/3IC;->A05:Z

    goto/16 :goto_5

    :sswitch_1
    iget v0, v11, LX/3IC;->A01:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, v11, LX/3IC;->A03:LX/3He;

    invoke-virtual {v0}, LX/2Hg;->A06()LX/2Hf;

    move-result-object v2

    check-cast v2, LX/3Hd;

    :goto_2
    invoke-static {}, LX/3He;->A06()LX/0Wk;

    move-result-object v0

    invoke-virtual {v13, v0, v12}, LX/0WP;->A0D(LX/0Wk;LX/0WT;)LX/1hm;

    move-result-object v0

    check-cast v0, LX/3He;

    iput-object v0, v11, LX/3IC;->A03:LX/3He;

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, LX/2Hf;->A00(LX/2Hg;)LX/2Hf;

    invoke-virtual {v2}, LX/2Hf;->A01()LX/2Hg;

    move-result-object v0

    check-cast v0, LX/3He;

    iput-object v0, v11, LX/3IC;->A03:LX/3He;

    :cond_3
    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v1, v0

    iput v1, v11, LX/3IC;->A01:I

    goto/16 :goto_5

    :sswitch_2
    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v0, v14

    iput v0, v11, LX/3IC;->A01:I

    invoke-virtual {v13}, LX/0WP;->A0C()LX/0WO;

    move-result-object v0

    iput-object v0, v11, LX/3IC;->A07:LX/0WO;

    goto/16 :goto_5

    :sswitch_3
    invoke-virtual {v13}, LX/0WP;->A05()I

    move-result v1

    invoke-static {v1}, LX/34C;->A00(I)LX/34C;

    move-result-object v0

    if-nez v0, :cond_4

    const/16 v0, 0xa

    invoke-super {v11, v0, v1}, LX/2Hg;->A0A(II)V

    goto :goto_5

    :cond_4
    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v0, v10

    iput v0, v11, LX/3IC;->A01:I

    iput v1, v11, LX/3IC;->A09:I

    goto :goto_5

    :sswitch_4
    invoke-virtual {v13}, LX/0WP;->A05()I

    move-result v1

    invoke-static {v1}, LX/34B;->A00(I)LX/34B;

    move-result-object v0

    if-nez v0, :cond_5

    const/16 v0, 0x9

    invoke-super {v11, v0, v1}, LX/2Hg;->A0A(II)V

    goto :goto_5

    :cond_5
    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v0, v9

    iput v0, v11, LX/3IC;->A01:I

    iput v1, v11, LX/3IC;->A06:I

    goto :goto_5

    :sswitch_5
    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v0, v8

    iput v0, v11, LX/3IC;->A01:I

    invoke-virtual {v13}, LX/0WP;->A04()I

    move-result v0

    iput v0, v11, LX/3IC;->A00:I

    goto :goto_5

    :sswitch_6
    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v0, v7

    iput v0, v11, LX/3IC;->A01:I

    invoke-virtual {v13}, LX/0WP;->A04()I

    move-result v0

    iput v0, v11, LX/3IC;->A0A:I

    goto :goto_5

    :sswitch_7
    invoke-virtual {v13}, LX/0WP;->A0E()Ljava/lang/String;

    move-result-object v1

    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v0, v6

    iput v0, v11, LX/3IC;->A01:I

    iput-object v1, v11, LX/3IC;->A0C:Ljava/lang/String;

    goto :goto_5

    :sswitch_8
    invoke-virtual {v13}, LX/0WP;->A0E()Ljava/lang/String;

    move-result-object v1

    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v0, v5

    iput v0, v11, LX/3IC;->A01:I

    iput-object v1, v11, LX/3IC;->A04:Ljava/lang/String;

    goto :goto_5

    :sswitch_9
    invoke-virtual {v13}, LX/0WP;->A0E()Ljava/lang/String;

    move-result-object v1

    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v0, v4

    iput v0, v11, LX/3IC;->A01:I

    iput-object v1, v11, LX/3IC;->A02:Ljava/lang/String;

    goto :goto_5

    :sswitch_a
    invoke-virtual {v13}, LX/0WP;->A0E()Ljava/lang/String;

    move-result-object v1

    iget v0, v11, LX/3IC;->A01:I

    or-int/2addr v0, v3

    iput v0, v11, LX/3IC;->A01:I

    iput-object v1, v11, LX/3IC;->A08:Ljava/lang/String;

    goto :goto_5

    :sswitch_b
    invoke-virtual {v13}, LX/0WP;->A0E()Ljava/lang/String;

    move-result-object v2

    iget v1, v11, LX/3IC;->A01:I

    const/4 v0, 0x1

    or-int/2addr v1, v0

    iput v1, v11, LX/3IC;->A01:I

    iput-object v2, v11, LX/3IC;->A0B:Ljava/lang/String;

    goto :goto_5

    :goto_4
    :sswitch_c
    const/4 v15, 0x1

    :cond_6
    :goto_5
    const/16 v1, 0x800

    goto/16 :goto_1
    :try_end_1
    .catch LX/0Wd; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    :try_start_2
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    iput-object v11, v0, LX/0Wd;->unfinishedMessage:LX/1hm;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v1, LX/0Wd;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, LX/0Wd;-><init>(Ljava/lang/String;)V

    iput-object v11, v1, LX/0Wd;->unfinishedMessage:LX/1hm;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    :cond_7
    :pswitch_5
    sget-object v0, LX/3IC;->A0D:LX/3IC;

    return-object v0

    :pswitch_6
    check-cast v13, LX/0WZ;

    check-cast v12, LX/3IC;

    iget v2, v11, LX/3IC;->A01:I

    const/4 v15, 0x1

    and-int v0, v2, v15

    const/16 v17, 0x0

    if-ne v0, v15, :cond_8

    const/16 v17, 0x1

    :cond_8
    iget-object v0, v11, LX/3IC;->A0B:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v1, v12, LX/3IC;->A01:I

    and-int v0, v1, v15

    const/16 v16, 0x0

    if-ne v0, v15, :cond_9

    const/16 v16, 0x1

    :cond_9
    iget-object v0, v12, LX/3IC;->A0B:Ljava/lang/String;

    move-object/from16 v18, v13

    move/from16 v19, v17

    move/from16 v21, v16

    move-object/from16 v22, v0

    invoke-interface/range {v18 .. v22}, LX/0WZ;->AKf(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, LX/3IC;->A0B:Ljava/lang/String;

    and-int v0, v2, v3

    const/16 v16, 0x0

    if-ne v0, v3, :cond_a

    const/16 v16, 0x1

    :cond_a
    iget-object v0, v11, LX/3IC;->A08:Ljava/lang/String;

    move-object/from16 v17, v0

    and-int v0, v1, v3

    const/4 v15, 0x0

    if-ne v0, v3, :cond_b

    const/4 v15, 0x1

    :cond_b
    iget-object v0, v12, LX/3IC;->A08:Ljava/lang/String;

    move/from16 v18, v15

    move-object/from16 v19, v0

    move-object v15, v13

    invoke-interface/range {v15 .. v19}, LX/0WZ;->AKf(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, LX/3IC;->A08:Ljava/lang/String;

    and-int v0, v2, v4

    const/4 v3, 0x0

    if-ne v0, v4, :cond_c

    const/4 v3, 0x1

    :cond_c
    iget-object v0, v11, LX/3IC;->A02:Ljava/lang/String;

    move-object/from16 v16, v0

    and-int v15, v1, v4

    const/4 v0, 0x0

    if-ne v15, v4, :cond_d

    const/4 v0, 0x1

    :cond_d
    iget-object v15, v12, LX/3IC;->A02:Ljava/lang/String;

    move-object/from16 v4, v16

    invoke-interface {v13, v3, v4, v0, v15}, LX/0WZ;->AKf(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, LX/3IC;->A02:Ljava/lang/String;

    and-int v0, v2, v5

    const/4 v4, 0x0

    if-ne v0, v5, :cond_e

    const/4 v4, 0x1

    :cond_e
    iget-object v15, v11, LX/3IC;->A04:Ljava/lang/String;

    and-int v3, v1, v5

    const/4 v0, 0x0

    if-ne v3, v5, :cond_f

    const/4 v0, 0x1

    :cond_f
    iget-object v3, v12, LX/3IC;->A04:Ljava/lang/String;

    invoke-interface {v13, v4, v15, v0, v3}, LX/0WZ;->AKf(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, LX/3IC;->A04:Ljava/lang/String;

    and-int v0, v2, v6

    const/4 v5, 0x0

    if-ne v0, v6, :cond_10

    const/4 v5, 0x1

    :cond_10
    iget-object v4, v11, LX/3IC;->A0C:Ljava/lang/String;

    and-int v0, v1, v6

    const/4 v3, 0x0

    if-ne v0, v6, :cond_11

    const/4 v3, 0x1

    :cond_11
    iget-object v0, v12, LX/3IC;->A0C:Ljava/lang/String;

    invoke-interface {v13, v5, v4, v3, v0}, LX/0WZ;->AKf(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, LX/3IC;->A0C:Ljava/lang/String;

    and-int v0, v2, v7

    const/4 v5, 0x0

    if-ne v0, v7, :cond_12

    const/4 v5, 0x1

    :cond_12
    iget v4, v11, LX/3IC;->A0A:I

    and-int v0, v1, v7

    const/4 v3, 0x0

    if-ne v0, v7, :cond_13

    const/4 v3, 0x1

    :cond_13
    iget v0, v12, LX/3IC;->A0A:I

    invoke-interface {v13, v5, v4, v3, v0}, LX/0WZ;->AKX(ZIZI)I

    move-result v0

    iput v0, v11, LX/3IC;->A0A:I

    and-int v0, v2, v8

    const/4 v5, 0x0

    if-ne v0, v8, :cond_14

    const/4 v5, 0x1

    :cond_14
    iget v4, v11, LX/3IC;->A00:I

    and-int v0, v1, v8

    const/4 v3, 0x0

    if-ne v0, v8, :cond_15

    const/4 v3, 0x1

    :cond_15
    iget v0, v12, LX/3IC;->A00:I

    invoke-interface {v13, v5, v4, v3, v0}, LX/0WZ;->AKX(ZIZI)I

    move-result v0

    iput v0, v11, LX/3IC;->A00:I

    and-int v0, v2, v9

    const/4 v5, 0x0

    if-ne v0, v9, :cond_16

    const/4 v5, 0x1

    :cond_16
    iget v4, v11, LX/3IC;->A06:I

    and-int v0, v1, v9

    const/4 v3, 0x0

    if-ne v0, v9, :cond_17

    const/4 v3, 0x1

    :cond_17
    iget v0, v12, LX/3IC;->A06:I

    invoke-interface {v13, v5, v4, v3, v0}, LX/0WZ;->AKX(ZIZI)I

    move-result v0

    iput v0, v11, LX/3IC;->A06:I

    and-int v0, v2, v10

    const/4 v5, 0x0

    if-ne v0, v10, :cond_18

    const/4 v5, 0x1

    :cond_18
    iget v4, v11, LX/3IC;->A09:I

    and-int v0, v1, v10

    const/4 v3, 0x0

    if-ne v0, v10, :cond_19

    const/4 v3, 0x1

    :cond_19
    iget v0, v12, LX/3IC;->A09:I

    invoke-interface {v13, v5, v4, v3, v0}, LX/0WZ;->AKX(ZIZI)I

    move-result v0

    iput v0, v11, LX/3IC;->A09:I

    and-int/2addr v2, v14

    const/4 v4, 0x0

    if-ne v2, v14, :cond_1a

    const/4 v4, 0x1

    :cond_1a
    iget-object v3, v11, LX/3IC;->A07:LX/0WO;

    and-int/2addr v1, v14

    const/4 v2, 0x0

    if-ne v1, v14, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    iget-object v0, v12, LX/3IC;->A07:LX/0WO;

    invoke-interface {v13, v4, v3, v2, v0}, LX/0WZ;->AKT(ZLX/0WO;ZLX/0WO;)LX/0WO;

    move-result-object v0

    iput-object v0, v11, LX/3IC;->A07:LX/0WO;

    iget-object v1, v11, LX/3IC;->A03:LX/3He;

    iget-object v0, v12, LX/3IC;->A03:LX/3He;

    invoke-interface {v13, v1, v0}, LX/0WZ;->AKb(LX/1hm;LX/1hm;)LX/1hm;

    move-result-object v0

    check-cast v0, LX/3He;

    iput-object v0, v11, LX/3IC;->A03:LX/3He;

    iget v6, v11, LX/3IC;->A01:I

    const/16 v5, 0x800

    and-int v0, v6, v5

    const/4 v4, 0x0

    if-ne v0, v5, :cond_1c

    const/4 v4, 0x1

    :cond_1c
    iget-boolean v3, v11, LX/3IC;->A05:Z

    iget v2, v12, LX/3IC;->A01:I

    and-int v0, v2, v5

    const/4 v1, 0x0

    if-ne v0, v5, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    iget-boolean v0, v12, LX/3IC;->A05:Z

    invoke-interface {v13, v4, v3, v1, v0}, LX/0WZ;->AKS(ZZZZ)Z

    move-result v0

    iput-boolean v0, v11, LX/3IC;->A05:Z

    sget-object v0, LX/1hi;->A00:LX/1hi;

    if-ne v13, v0, :cond_1e

    or-int/2addr v6, v2

    iput v6, v11, LX/3IC;->A01:I

    :cond_1e
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0xa -> :sswitch_b
        0x12 -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x3d -> :sswitch_6
        0x45 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x82 -> :sswitch_2
        0x8a -> :sswitch_1
        0x90 -> :sswitch_0
    .end sparse-switch
.end method

.method public A0S()LX/3He;
    .locals 1

    iget-object v0, p0, LX/3IC;->A03:LX/3He;

    if-nez v0, :cond_0

    sget-object v0, LX/3He;->A0E:LX/3He;

    :cond_0
    return-object v0
.end method

.method public A6c()I
    .locals 5

    iget v1, p0, LX/2Hg;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    return v1

    :cond_0
    const/4 v4, 0x0

    iget v0, p0, LX/3IC;->A01:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LX/3IC;->A0B:Ljava/lang/String;

    invoke-static {v1, v0}, LX/1hd;->A08(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v4, v0

    :cond_1
    iget v0, p0, LX/3IC;->A01:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LX/3IC;->A08:Ljava/lang/String;

    invoke-static {v1, v0}, LX/1hd;->A08(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v4, v0

    :cond_2
    iget v0, p0, LX/3IC;->A01:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, LX/3IC;->A02:Ljava/lang/String;

    invoke-static {v1, v0}, LX/1hd;->A08(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v4, v0

    :cond_3
    iget v1, p0, LX/3IC;->A01:I

    const/16 v0, 0x8

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    const/4 v1, 0x5

    iget-object v0, p0, LX/3IC;->A04:Ljava/lang/String;

    invoke-static {v1, v0}, LX/1hd;->A08(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v4, v0

    :cond_4
    iget v0, p0, LX/3IC;->A01:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    const/4 v1, 0x6

    iget-object v0, p0, LX/3IC;->A0C:Ljava/lang/String;

    invoke-static {v1, v0}, LX/1hd;->A08(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v4, v0

    :cond_5
    iget v2, p0, LX/3IC;->A01:I

    const/16 v1, 0x20

    and-int v0, v2, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, LX/1hd;->A0A(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v4, v0

    :cond_6
    const/16 v1, 0x40

    and-int v0, v2, v1

    if-ne v0, v1, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, LX/1hd;->A0A(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v4, v0

    :cond_7
    const/16 v1, 0x80

    and-int v0, v2, v1

    if-ne v0, v1, :cond_8

    const/16 v1, 0x9

    iget v0, p0, LX/3IC;->A06:I

    invoke-static {v1, v0}, LX/1hd;->A03(II)I

    move-result v0

    add-int/2addr v4, v0

    :cond_8
    const/16 v1, 0x100

    and-int v0, v2, v1

    if-ne v0, v1, :cond_9

    const/16 v1, 0xa

    iget v0, p0, LX/3IC;->A09:I

    invoke-static {v1, v0}, LX/1hd;->A03(II)I

    move-result v0

    add-int/2addr v4, v0

    :cond_9
    const/16 v1, 0x200

    and-int v0, v2, v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, LX/3IC;->A07:LX/0WO;

    invoke-static {v3, v0}, LX/1hd;->A01(ILX/0WO;)I

    move-result v0

    add-int/2addr v4, v0

    :cond_a
    const/16 v0, 0x400

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_b

    const/16 v1, 0x11

    invoke-virtual {p0}, LX/3IC;->A0S()LX/3He;

    move-result-object v0

    invoke-static {v1, v0}, LX/1hd;->A07(ILX/1hm;)I

    move-result v0

    add-int/2addr v4, v0

    :cond_b
    iget v1, p0, LX/3IC;->A01:I

    const/16 v0, 0x800

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_c

    const/16 v1, 0x12

    iget-boolean v0, p0, LX/3IC;->A05:Z

    invoke-static {v1, v0}, LX/1hd;->A00(IZ)I

    move-result v0

    add-int/2addr v4, v0

    :cond_c
    iget-object v0, p0, LX/2Hg;->unknownFields:LX/0Wt;

    invoke-virtual {v0}, LX/0Wt;->A00()I

    move-result v0

    add-int/2addr v0, v4

    iput v0, p0, LX/2Hg;->A00:I

    return v0
.end method

.method public AKn(LX/1hd;)V
    .locals 4

    iget v0, p0, LX/3IC;->A01:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LX/3IC;->A0B:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, LX/1hd;->A0Q(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, LX/3IC;->A01:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LX/3IC;->A08:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, LX/1hd;->A0Q(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, LX/3IC;->A01:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LX/3IC;->A02:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, LX/1hd;->A0Q(ILjava/lang/String;)V

    :cond_2
    iget v0, p0, LX/3IC;->A01:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    const/4 v1, 0x5

    iget-object v0, p0, LX/3IC;->A04:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, LX/1hd;->A0Q(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, LX/3IC;->A01:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    const/4 v1, 0x6

    iget-object v0, p0, LX/3IC;->A0C:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, LX/1hd;->A0Q(ILjava/lang/String;)V

    :cond_4
    iget v1, p0, LX/3IC;->A01:I

    const/16 v0, 0x20

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_5

    const/4 v1, 0x7

    iget v0, p0, LX/3IC;->A0A:I

    invoke-virtual {p1, v1, v0}, LX/1hd;->A0H(II)V

    :cond_5
    iget v1, p0, LX/3IC;->A01:I

    const/16 v0, 0x40

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_6

    iget v0, p0, LX/3IC;->A00:I

    invoke-virtual {p1, v3, v0}, LX/1hd;->A0H(II)V

    :cond_6
    iget v1, p0, LX/3IC;->A01:I

    const/16 v0, 0x80

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_7

    const/16 v1, 0x9

    iget v0, p0, LX/3IC;->A06:I

    invoke-virtual {p1, v1, v0}, LX/1hd;->A0I(II)V

    :cond_7
    iget v1, p0, LX/3IC;->A01:I

    const/16 v0, 0x100

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_8

    const/16 v1, 0xa

    iget v0, p0, LX/3IC;->A09:I

    invoke-virtual {p1, v1, v0}, LX/1hd;->A0I(II)V

    :cond_8
    iget v1, p0, LX/3IC;->A01:I

    const/16 v0, 0x200

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_9

    iget-object v0, p0, LX/3IC;->A07:LX/0WO;

    invoke-virtual {p1, v2, v0}, LX/1hd;->A0O(ILX/0WO;)V

    :cond_9
    iget v1, p0, LX/3IC;->A01:I

    const/16 v0, 0x400

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_a

    const/16 v1, 0x11

    invoke-virtual {p0}, LX/3IC;->A0S()LX/3He;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LX/1hd;->A0P(ILX/1hm;)V

    :cond_a
    iget v1, p0, LX/3IC;->A01:I

    const/16 v0, 0x800

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_b

    const/16 v1, 0x12

    iget-boolean v0, p0, LX/3IC;->A05:Z

    invoke-virtual {p1, v1, v0}, LX/1hd;->A0R(IZ)V

    :cond_b
    iget-object v0, p0, LX/2Hg;->unknownFields:LX/0Wt;

    invoke-virtual {v0, p1}, LX/0Wt;->A02(LX/1hd;)V

    return-void
.end method
